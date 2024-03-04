package org.bouncycastle.crypto.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.security.SecureRandom;
import java.util.Objects;
import oj.a;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.o;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.w0;
import org.bouncycastle.crypto.d;
import org.bouncycastle.util.c;
/* loaded from: classes7.dex */
public class JournaledAlgorithm implements c, Serializable {
    private transient a algID;
    private transient JournalingSecureRandom journaling;

    public JournaledAlgorithm(a aVar, JournalingSecureRandom journalingSecureRandom) {
        Objects.requireNonNull(aVar, "AlgorithmIdentifier passed to JournaledAlgorithm is null");
        Objects.requireNonNull(journalingSecureRandom, "JournalingSecureRandom passed to JournaledAlgorithm is null");
        this.journaling = journalingSecureRandom;
        this.algID = aVar;
    }

    public JournaledAlgorithm(byte[] bArr) {
        this(bArr, d.b());
    }

    public JournaledAlgorithm(byte[] bArr, SecureRandom secureRandom) {
        Objects.requireNonNull(bArr, "encoding passed to JournaledAlgorithm is null");
        Objects.requireNonNull(secureRandom, "random passed to JournaledAlgorithm is null");
        initFromEncoding(bArr, secureRandom);
    }

    public static JournaledAlgorithm getState(File file, SecureRandom secureRandom) throws IOException, ClassNotFoundException {
        Objects.requireNonNull(file, "File for loading is null in JournaledAlgorithm");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        try {
            return new JournaledAlgorithm(dl.a.b(bufferedInputStream), secureRandom);
        } finally {
            bufferedInputStream.close();
        }
    }

    public static JournaledAlgorithm getState(InputStream inputStream, SecureRandom secureRandom) throws IOException, ClassNotFoundException {
        Objects.requireNonNull(inputStream, "stream for loading is null in JournaledAlgorithm");
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            return new JournaledAlgorithm(dl.a.b(bufferedInputStream), secureRandom);
        } finally {
            bufferedInputStream.close();
        }
    }

    private void initFromEncoding(byte[] bArr, SecureRandom secureRandom) {
        s K = s.K(bArr);
        this.algID = a.y(K.M(0));
        this.journaling = new JournalingSecureRandom(o.K(K.M(1)).M(), secureRandom);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        initFromEncoding((byte[]) objectInputStream.readObject(), d.b());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public a getAlgorithmIdentifier() {
        return this.algID;
    }

    @Override // org.bouncycastle.util.c
    public byte[] getEncoded() throws IOException {
        f fVar = new f();
        fVar.a(this.algID);
        fVar.a(new w0(this.journaling.getFullTranscript()));
        return new a1(fVar).getEncoded();
    }

    public JournalingSecureRandom getJournalingSecureRandom() {
        return this.journaling;
    }

    public void storeState(File file) throws IOException {
        Objects.requireNonNull(file, "file for storage is null in JournaledAlgorithm");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            storeState(fileOutputStream);
        } finally {
            fileOutputStream.close();
        }
    }

    public void storeState(OutputStream outputStream) throws IOException {
        Objects.requireNonNull(outputStream, "output stream for storage is null in JournaledAlgorithm");
        outputStream.write(getEncoded());
    }
}
