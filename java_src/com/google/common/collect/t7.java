package com.google.common.collect;

import com.google.common.collect.q6;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes2.dex */
final class t7 {

    /* loaded from: classes2.dex */
    static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Field f13433a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a(T t10, int i9) {
            try {
                this.f13433a.set(t10, Integer.valueOf(i9));
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void b(T t10, Object obj) {
            try {
                this.f13433a.set(t10, obj);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }

        private b(Field field) {
            this.f13433a = field;
            field.setAccessible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> b<T> a(Class<T> cls, String str) {
        try {
            return new b<>(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e10) {
            throw new AssertionError(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void b(Map<K, V> map, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        c(map, objectInputStream, objectInputStream.readInt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void c(Map<K, V> map, ObjectInputStream objectInputStream, int i9) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < i9; i10++) {
            map.put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void d(i6<K, V> i6Var, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        e(i6Var, objectInputStream, objectInputStream.readInt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void e(i6<K, V> i6Var, ObjectInputStream objectInputStream, int i9) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < i9; i10++) {
            Collection collection = i6Var.get(objectInputStream.readObject());
            int readInt = objectInputStream.readInt();
            for (int i11 = 0; i11 < readInt; i11++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void f(q6<E> q6Var, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        g(q6Var, objectInputStream, objectInputStream.readInt());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <E> void g(q6<E> q6Var, ObjectInputStream objectInputStream, int i9) throws IOException, ClassNotFoundException {
        for (int i10 = 0; i10 < i9; i10++) {
            q6Var.add(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(ObjectInputStream objectInputStream) throws IOException {
        return objectInputStream.readInt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void i(Map<K, V> map, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(map.size());
        for (Map.Entry<K, V> entry : map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K, V> void j(i6<K, V> i6Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(i6Var.asMap().size());
        for (Map.Entry<K, Collection<V>> entry : i6Var.asMap().entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            for (V v10 : entry.getValue()) {
                objectOutputStream.writeObject(v10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <E> void k(q6<E> q6Var, ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(q6Var.entrySet().size());
        for (q6.a<E> aVar : q6Var.entrySet()) {
            objectOutputStream.writeObject(aVar.a());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }
}
