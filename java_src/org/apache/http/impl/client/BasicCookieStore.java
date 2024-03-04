package org.apache.http.impl.client;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.http.cookie.CookieIdentityComparator;
import ri.a;
/* loaded from: classes7.dex */
public class BasicCookieStore implements Serializable {
    private static final long serialVersionUID = -7581093305228232025L;
    private final TreeSet<a> cookies = new TreeSet<>(new CookieIdentityComparator());
    private transient ReadWriteLock lock = new ReentrantReadWriteLock();

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.lock = new ReentrantReadWriteLock();
    }

    public void addCookie(a aVar) {
        if (aVar != null) {
            this.lock.writeLock().lock();
            try {
                this.cookies.remove(aVar);
                if (!aVar.isExpired(new Date())) {
                    this.cookies.add(aVar);
                }
            } finally {
                this.lock.writeLock().unlock();
            }
        }
    }

    public void addCookies(a[] aVarArr) {
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                addCookie(aVar);
            }
        }
    }

    public void clear() {
        this.lock.writeLock().lock();
        try {
            this.cookies.clear();
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public boolean clearExpired(Date date) {
        boolean z10 = false;
        if (date == null) {
            return false;
        }
        this.lock.writeLock().lock();
        try {
            Iterator<a> it = this.cookies.iterator();
            while (it.hasNext()) {
                if (it.next().isExpired(date)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public List<a> getCookies() {
        this.lock.readLock().lock();
        try {
            return new ArrayList(this.cookies);
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public String toString() {
        this.lock.readLock().lock();
        try {
            return this.cookies.toString();
        } finally {
            this.lock.readLock().unlock();
        }
    }
}
