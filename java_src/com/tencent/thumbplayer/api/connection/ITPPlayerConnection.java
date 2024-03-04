package com.tencent.thumbplayer.api.connection;
/* loaded from: classes4.dex */
public interface ITPPlayerConnection {
    int activeAllConnections();

    int activeConnection(int i9);

    int addConnection(long j10, TPPlayerConnectionNode tPPlayerConnectionNode, long j11, TPPlayerConnectionNode tPPlayerConnectionNode2);

    void deactiveAllConnections();

    void deactiveConnection(int i9);

    void init();

    void removeConnection(int i9);

    void uninit();
}
