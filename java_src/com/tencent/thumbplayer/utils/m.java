package com.tencent.thumbplayer.utils;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes4.dex */
public class m extends ReentrantReadWriteLock {

    /* renamed from: a  reason: collision with root package name */
    private Condition f34481a = writeLock().newCondition();
}
