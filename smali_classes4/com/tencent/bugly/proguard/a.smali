.class public Lcom/tencent/bugly/proguard/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/net/Proxy;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field c:Lcom/tencent/bugly/proguard/i;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->d:Ljava/util/HashMap;

    const-string v0, "GBK"

    .line 5
    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/i;

    return-void
.end method

.method public static a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/am;
    .locals 5

    .line 112
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 114
    :cond_0
    :try_start_0
    new-instance v3, Lcom/tencent/bugly/proguard/am;

    invoke-direct {v3}, Lcom/tencent/bugly/proguard/am;-><init>()V

    .line 115
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    .line 116
    :try_start_1
    iput v4, v3, Lcom/tencent/bugly/proguard/am;->a:I

    .line 117
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/proguard/am;->b:Ljava/lang/String;

    .line 118
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/am;->c:Ljava/lang/String;

    .line 119
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/am;->d:Ljava/lang/String;

    .line 120
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->l:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/am;->e:Ljava/lang/String;

    .line 121
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/proguard/am;->f:Ljava/lang/String;

    .line 122
    iput p1, v3, Lcom/tencent/bugly/proguard/am;->g:I

    if-nez p2, :cond_1

    const-string p1, ""

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :cond_1
    iput-object p2, v3, Lcom/tencent/bugly/proguard/am;->h:[B

    .line 124
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/am;->i:Ljava/lang/String;

    .line 125
    iget-object p1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    iput-object p1, v3, Lcom/tencent/bugly/proguard/am;->j:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    .line 127
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/am;->l:Ljava/lang/String;

    .line 128
    iget-wide p1, v1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    iput-wide p1, v3, Lcom/tencent/bugly/proguard/am;->m:J

    .line 129
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/tencent/bugly/proguard/am;->o:Ljava/lang/String;

    .line 130
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/bugly/proguard/am;->p:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v3, Lcom/tencent/bugly/proguard/am;->q:J

    .line 132
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->j()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/bugly/proguard/am;->r:Ljava/lang/String;

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/tencent/bugly/proguard/am;->s:Ljava/lang/String;

    .line 134
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->p:Ljava/lang/String;

    iput-object p0, v3, Lcom/tencent/bugly/proguard/am;->t:Ljava/lang/String;

    const-string p0, "com.tencent.bugly"

    .line 135
    iput-object p0, v3, Lcom/tencent/bugly/proguard/am;->n:Ljava/lang/String;

    .line 136
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "A26"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "A62"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->E()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "A63"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->F()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "F11"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->A:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "F12"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "D3"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->k:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object p0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    if-eqz p0, :cond_3

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/a;

    .line 144
    iget-object p2, p1, Lcom/tencent/bugly/a;->versionKey:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/tencent/bugly/a;->version:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 145
    iget-object v1, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_3
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "G15"

    const-string p2, "G15"

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "G10"

    const-string p2, "G10"

    const-string v1, ""

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object p0, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    const-string p1, "D4"

    const-string p2, "D4"

    const-string v1, "0"

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/z;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 151
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 152
    iget-object p2, v3, Lcom/tencent/bugly/proguard/am;->k:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v3

    :catchall_0
    move-exception p0

    .line 153
    monitor-exit v0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 154
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 155
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-object v2

    :cond_6
    :goto_2
    const-string p0, "Can not create request pkg for parameters is invalid."

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 156
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2
.end method

.method public static a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/proguard/aq;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/tencent/bugly/proguard/aq;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/aq;-><init>()V

    .line 10
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->e:J

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/aq;->a:J

    .line 11
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/aq;->e:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/aq;->d:Ljava/lang/String;

    .line 13
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/bugly/proguard/aq;->c:Ljava/lang/String;

    .line 14
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/tencent/bugly/proguard/aq;->g:Z

    .line 15
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->b:I

    const/4 v5, 0x2

    if-eq v2, v4, :cond_6

    const/4 v6, 0x4

    if-eq v2, v5, :cond_5

    const/4 v7, 0x3

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    const/16 v6, 0xa

    if-lt v2, v6, :cond_2

    const/16 v6, 0x14

    if-ge v2, v6, :cond_2

    int-to-byte v0, v2

    .line 16
    iput-byte v0, v1, Lcom/tencent/bugly/proguard/aq;->b:B

    goto :goto_1

    :cond_2
    new-array p0, v4, [Ljava/lang/Object;

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v3

    const-string/jumbo v1, "unknown uinfo type %d "

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 18
    :cond_3
    iput-byte v7, v1, Lcom/tencent/bugly/proguard/aq;->b:B

    goto :goto_1

    .line 19
    :cond_4
    iput-byte v5, v1, Lcom/tencent/bugly/proguard/aq;->b:B

    goto :goto_1

    .line 20
    :cond_5
    iput-byte v6, v1, Lcom/tencent/bugly/proguard/aq;->b:B

    goto :goto_1

    .line 21
    :cond_6
    iput-byte v4, v1, Lcom/tencent/bugly/proguard/aq;->b:B

    .line 22
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    .line 23
    iget v2, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    if-ltz v2, :cond_7

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "C01"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_7
    iget v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    if-ltz v0, :cond_8

    .line 26
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "C02"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    iget-object v6, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C03_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 32
    iget-object v6, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "C04_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 33
    :cond_a
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->l:Z

    xor-int/2addr v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "A36"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F02"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F03"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F04"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F05"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "F06"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "F10"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v5, [Ljava/lang/Object;

    .line 40
    iget-byte v0, v1, Lcom/tencent/bugly/proguard/aq;->b:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, p0, v3

    iget-object v0, v1, Lcom/tencent/bugly/proguard/aq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v4

    const-string/jumbo v0, "summary type %d vm:%d"

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static a(Ljava/util/List;I)Lcom/tencent/bugly/proguard/ar;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/biz/UserInfoBean;",
            ">;I)",
            "Lcom/tencent/bugly/proguard/ar;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 76
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->p()Ljava/lang/String;

    .line 78
    new-instance v2, Lcom/tencent/bugly/proguard/ar;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ar;-><init>()V

    .line 79
    iget-object v3, v1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ar;->b:Ljava/lang/String;

    .line 80
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ar;->c:Ljava/lang/String;

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/biz/UserInfoBean;

    .line 83
    invoke-static {v4}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/crashreport/biz/UserInfoBean;)Lcom/tencent/bugly/proguard/aq;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_3
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ar;->d:Ljava/util/ArrayList;

    .line 86
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A7"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A6"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A5"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A2"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->l()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A1"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A24"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A17"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A15"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A13"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F08"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "F09"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 99
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 100
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ar;->e:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "C04_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    if-eq p1, p0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1

    const-string/jumbo p1, "unknown up type %d "

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    .line 103
    :cond_5
    iput-byte v1, v2, Lcom/tencent/bugly/proguard/ar;->a:B

    goto :goto_2

    .line 104
    :cond_6
    iput-byte p0, v2, Lcom/tencent/bugly/proguard/ar;->a:B

    :goto_2
    return-object v2

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/bugly/proguard/k;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 105
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/k;

    .line 107
    new-instance v1, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/i;-><init>([B)V

    const-string/jumbo p0, "utf-8"

    .line 108
    invoke-virtual {v1, p0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 109
    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 110
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "map"

    const-string v5, "list"

    if-ge v2, v3, :cond_12

    .line 43
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "java.lang.Integer"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "short"

    const-string v8, "float"

    const-string v9, "double"

    if-nez v6, :cond_11

    const-string v6, "int"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v6, "java.lang.Boolean"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "boolean"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v6, "java.lang.Byte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "byte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v6, "java.lang.Double"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v6, "java.lang.Float"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const-string v6, "java.lang.Long"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "long"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "java.lang.Short"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    const-string v6, "java.lang.Character"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "java.lang.String"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v4, "string"

    goto :goto_8

    :cond_7
    const-string v6, "java.util.List"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v4, v5

    goto :goto_8

    :cond_8
    const-string v5, "java.util.Map"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_8

    :cond_9
    move-object v4, v3

    goto :goto_8

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "can not support java.lang.Character"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_1
    move-object v4, v7

    goto :goto_8

    :cond_c
    :goto_2
    const-string v4, "int64"

    goto :goto_8

    :cond_d
    :goto_3
    move-object v4, v8

    goto :goto_8

    :cond_e
    :goto_4
    move-object v4, v9

    goto :goto_8

    :cond_f
    :goto_5
    const-string v4, "char"

    goto :goto_8

    :cond_10
    :goto_6
    const-string v4, "bool"

    goto :goto_8

    :cond_11
    :goto_7
    const-string v4, "int32"

    :goto_8
    invoke-virtual {p0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 44
    :cond_12
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 45
    :goto_9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    .line 46
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ">"

    const-string v8, "<"

    if-eqz v6, :cond_13

    add-int/lit8 v3, v2, -0x1

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 50
    :cond_13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    add-int/lit8 v3, v2, -0x1

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_14
    const-string v6, "Array"

    .line 53
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    add-int/lit8 v3, v2, -0x1

    .line 54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 56
    :cond_16
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 59
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    sput-object p0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 4
    sput-object v0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void
.end method

.method public static a(Ljava/net/InetAddress;I)V
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 5
    sput-object p0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 7
    sput-object v0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 157
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "java.util.List"

    const-string v3, "?"

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "byte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 160
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p2, "Array"

    .line 162
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only byte[] is supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_2
    instance-of v0, p2, Ljava/lang/reflect/Array;

    if-nez v0, :cond_7

    .line 166
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    check-cast p2, Ljava/util/List;

    .line 169
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 170
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 172
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    const-string v0, "java.util.Map"

    .line 173
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    check-cast p2, Ljava/util/Map;

    .line 175
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 176
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 178
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_5
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 183
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 184
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Array, please use List"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/tencent/bugly/proguard/k;)[B
    .locals 2

    .line 206
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const-string/jumbo v1, "utf-8"

    .line 207
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/j;)V

    .line 209
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->b()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 210
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 2

    .line 189
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/d;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/d;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->c()V

    const-string/jumbo v1, "utf-8"

    .line 191
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/c;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->a(I)V

    const-string v1, "RqdServer"

    .line 193
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "sync"

    .line 194
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/d;->c(Ljava/lang/String;)V

    const-string v1, "detail"

    .line 195
    invoke-virtual {v0, v1, p0}, Lcom/tencent/bugly/proguard/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/d;->a()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 197
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([B)Lcom/tencent/bugly/proguard/an;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/d;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/d;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/d;->c()V

    const-string/jumbo v2, "utf-8"

    .line 4
    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/c;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, p0}, Lcom/tencent/bugly/proguard/d;->a([B)V

    const-string p0, "detail"

    .line 6
    new-instance v2, Lcom/tencent/bugly/proguard/an;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/an;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/tencent/bugly/proguard/c;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    const-class v1, Lcom/tencent/bugly/proguard/an;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    const-class v1, Lcom/tencent/bugly/proguard/an;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/proguard/an;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static b()Ljava/net/Proxy;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/bugly/proguard/a;->e:Ljava/net/Proxy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 60
    instance-of v0, p2, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    .line 64
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    invoke-direct {p0, v3, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 68
    invoke-static {v3}, Lcom/tencent/bugly/proguard/a;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/tencent/bugly/proguard/a;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object p2, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can not support Set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put value can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "put key can not is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a([B)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/i;->a([B)V

    .line 200
    iget-object p1, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/i;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 201
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 202
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    new-array v2, v0, [B

    const-string v3, ""

    .line 203
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/tencent/bugly/proguard/a;->c:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v1, p1, v0, v0}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public a()[B
    .locals 3

    .line 185
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 186
    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/tencent/bugly/proguard/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 188
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method
