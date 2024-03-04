package org.threeten.bp;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.util.regex.Pattern;
import org.threeten.bp.zone.ZoneRulesException;
import org.threeten.bp.zone.d;
import org.threeten.bp.zone.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes7.dex */
public final class c extends ZoneId {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f56482c = Pattern.compile("[A-Za-z][A-Za-z0-9~/._+-]+");
    private static final long serialVersionUID = 8386373296231747096L;

    /* renamed from: a  reason: collision with root package name */
    private final String f56483a;

    /* renamed from: b  reason: collision with root package name */
    private final transient d f56484b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, d dVar) {
        this.f56483a = str;
        this.f56484b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c a(String str, boolean z10) {
        jl.d.i(str, "zoneId");
        if (str.length() >= 2 && f56482c.matcher(str).matches()) {
            d dVar = null;
            try {
                dVar = f.c(str, true);
            } catch (ZoneRulesException e10) {
                if (str.equals("GMT0")) {
                    dVar = ZoneOffset.UTC.getRules();
                } else if (z10) {
                    throw e10;
                }
            }
            return new c(str, dVar);
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    private static c b(String str) {
        if (!str.equals("Z") && !str.startsWith("+") && !str.startsWith("-")) {
            if (!str.equals("UTC") && !str.equals("GMT") && !str.equals("UT")) {
                if (!str.startsWith("UTC+") && !str.startsWith("GMT+") && !str.startsWith("UTC-") && !str.startsWith("GMT-")) {
                    if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
                        return a(str, false);
                    }
                    ZoneOffset of2 = ZoneOffset.of(str.substring(2));
                    if (of2.getTotalSeconds() == 0) {
                        return new c("UT", of2.getRules());
                    }
                    return new c("UT" + of2.getId(), of2.getRules());
                }
                ZoneOffset of3 = ZoneOffset.of(str.substring(3));
                if (of3.getTotalSeconds() == 0) {
                    return new c(str.substring(0, 3), of3.getRules());
                }
                return new c(str.substring(0, 3) + of3.getId(), of3.getRules());
            }
            return new c(str, ZoneOffset.UTC.getRules());
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ZoneId c(DataInput dataInput) throws IOException {
        return b(dataInput.readUTF());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new b((byte) 7, this);
    }

    @Override // org.threeten.bp.ZoneId
    public String getId() {
        return this.f56483a;
    }

    @Override // org.threeten.bp.ZoneId
    public d getRules() {
        d dVar = this.f56484b;
        return dVar != null ? dVar : f.c(this.f56483a, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.bp.ZoneId
    public void write(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(7);
        writeExternal(dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeUTF(this.f56483a);
    }
}
