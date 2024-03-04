package org.threeten.bp.chrono;

import com.tencent.rtmp.TXVodConstants;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.LocalDate;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ValueRange;
/* loaded from: classes7.dex */
public final class JapaneseEra extends jl.a implements Serializable {
    private static final int ADDITIONAL_VALUE = 4;
    static final int ERA_OFFSET = 2;
    public static final JapaneseEra HEISEI;
    private static final AtomicReference<JapaneseEra[]> KNOWN_ERAS;
    public static final JapaneseEra MEIJI;
    public static final JapaneseEra REIWA;
    public static final JapaneseEra SHOWA;
    public static final JapaneseEra TAISHO;
    private static final long serialVersionUID = 1466499369062886794L;
    private final int eraValue;
    private final transient String name;
    private final transient LocalDate since;

    static {
        JapaneseEra japaneseEra = new JapaneseEra(-1, LocalDate.of(1868, 9, 8), "Meiji");
        MEIJI = japaneseEra;
        JapaneseEra japaneseEra2 = new JapaneseEra(0, LocalDate.of(1912, 7, 30), "Taisho");
        TAISHO = japaneseEra2;
        JapaneseEra japaneseEra3 = new JapaneseEra(1, LocalDate.of(1926, 12, 25), "Showa");
        SHOWA = japaneseEra3;
        JapaneseEra japaneseEra4 = new JapaneseEra(2, LocalDate.of(1989, 1, 8), "Heisei");
        HEISEI = japaneseEra4;
        JapaneseEra japaneseEra5 = new JapaneseEra(3, LocalDate.of((int) TXVodConstants.VOD_PLAY_EVT_SEEK_COMPLETE, 5, 1), "Reiwa");
        REIWA = japaneseEra5;
        KNOWN_ERAS = new AtomicReference<>(new JapaneseEra[]{japaneseEra, japaneseEra2, japaneseEra3, japaneseEra4, japaneseEra5});
    }

    private JapaneseEra(int i9, LocalDate localDate, String str) {
        this.eraValue = i9;
        this.since = localDate;
        this.name = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JapaneseEra from(LocalDate localDate) {
        if (!localDate.isBefore(MEIJI.since)) {
            JapaneseEra[] japaneseEraArr = KNOWN_ERAS.get();
            for (int length = japaneseEraArr.length - 1; length >= 0; length--) {
                JapaneseEra japaneseEra = japaneseEraArr[length];
                if (localDate.compareTo((b) japaneseEra.since) >= 0) {
                    return japaneseEra;
                }
            }
            return null;
        }
        throw new DateTimeException("Date too early: " + localDate);
    }

    public static JapaneseEra of(int i9) {
        JapaneseEra[] japaneseEraArr = KNOWN_ERAS.get();
        if (i9 >= MEIJI.eraValue && i9 <= japaneseEraArr[japaneseEraArr.length - 1].eraValue) {
            return japaneseEraArr[ordinal(i9)];
        }
        throw new DateTimeException("japaneseEra is invalid");
    }

    private static int ordinal(int i9) {
        return i9 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JapaneseEra readExternal(DataInput dataInput) throws IOException {
        return of(dataInput.readByte());
    }

    private Object readResolve() throws ObjectStreamException {
        try {
            return of(this.eraValue);
        } catch (DateTimeException e10) {
            InvalidObjectException invalidObjectException = new InvalidObjectException("Invalid era");
            invalidObjectException.initCause(e10);
            throw invalidObjectException;
        }
    }

    public static JapaneseEra registerEra(LocalDate localDate, String str) {
        AtomicReference<JapaneseEra[]> atomicReference = KNOWN_ERAS;
        JapaneseEra[] japaneseEraArr = atomicReference.get();
        if (japaneseEraArr.length <= 5) {
            jl.d.i(localDate, "since");
            jl.d.i(str, "name");
            if (localDate.isAfter(REIWA.since)) {
                JapaneseEra japaneseEra = new JapaneseEra(4, localDate, str);
                JapaneseEra[] japaneseEraArr2 = (JapaneseEra[]) Arrays.copyOf(japaneseEraArr, 6);
                japaneseEraArr2[5] = japaneseEra;
                if (atomicReference.compareAndSet(japaneseEraArr, japaneseEraArr2)) {
                    return japaneseEra;
                }
                throw new DateTimeException("Only one additional Japanese era can be added");
            }
            throw new DateTimeException("Invalid since date for additional Japanese era, must be after Reiwa");
        }
        throw new DateTimeException("Only one additional Japanese era can be added");
    }

    public static JapaneseEra valueOf(String str) {
        JapaneseEra[] japaneseEraArr;
        jl.d.i(str, "japaneseEra");
        for (JapaneseEra japaneseEra : KNOWN_ERAS.get()) {
            if (str.equals(japaneseEra.name)) {
                return japaneseEra;
            }
        }
        throw new IllegalArgumentException("Era not found: " + str);
    }

    public static JapaneseEra[] values() {
        JapaneseEra[] japaneseEraArr = KNOWN_ERAS.get();
        return (JapaneseEra[]) Arrays.copyOf(japaneseEraArr, japaneseEraArr.length);
    }

    private Object writeReplace() {
        return new k((byte) 2, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalDate endDate() {
        int ordinal = ordinal(this.eraValue);
        JapaneseEra[] values = values();
        if (ordinal >= values.length - 1) {
            return LocalDate.MAX;
        }
        return values[ordinal + 1].startDate().minusDays(1L);
    }

    @Override // org.threeten.bp.chrono.j
    public int getValue() {
        return this.eraValue;
    }

    @Override // jl.c, org.threeten.bp.temporal.c
    public ValueRange range(org.threeten.bp.temporal.g gVar) {
        ChronoField chronoField = ChronoField.ERA;
        if (gVar == chronoField) {
            return JapaneseChronology.INSTANCE.range(chronoField);
        }
        return super.range(gVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalDate startDate() {
        return this.since;
    }

    public String toString() {
        return this.name;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(getValue());
    }
}
