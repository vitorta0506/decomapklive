.class public abstract Lcom/xiaomi/push/i1;
.super Lcom/xiaomi/push/c1;
.source "SourceFile"


# instance fields
.field protected volatile A:J

.field private B:I

.field private C:J

.field protected t:Ljava/lang/Exception;

.field protected u:Ljava/net/Socket;

.field v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field protected x:Lcom/xiaomi/push/service/XMPushService;

.field protected volatile y:J

.field protected volatile z:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/d1;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/c1;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/d1;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/xiaomi/push/i1;->v:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/i1;->y:J

    iput-wide v0, p0, Lcom/xiaomi/push/i1;->z:J

    iput-wide v0, p0, Lcom/xiaomi/push/i1;->A:J

    iput-wide v0, p0, Lcom/xiaomi/push/i1;->C:J

    iput-object p1, p0, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method private F(Lcom/xiaomi/push/d1;)V
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/push/d1;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/d1;->a()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/i1;->H(Ljava/lang/String;I)V

    return-void
.end method

.method private H(Ljava/lang/String;I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "|"

    const-string v4, "\n"

    const-string v5, " err:"

    const-string v6, " port:"

    const-string v7, "SMACK: Could not connect to "

    const-string v8, "SMACK: Could not connect to:"

    const/4 v9, 0x0

    iput-object v9, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get bucket for host : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ltf/c;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Lcom/xiaomi/push/i1;->B(Ljava/lang/String;)Lcom/xiaomi/push/i;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Ltf/c;->k(Ljava/lang/Integer;)V

    const/4 v10, 0x1

    if-eqz v15, :cond_0

    invoke-virtual {v15, v10}, Lcom/xiaomi/push/i;->e(Z)Ljava/util/ArrayList;

    move-result-object v9

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/xiaomi/push/m;->w(Ljava/lang/String;)Lcom/xiaomi/push/i;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11, v10}, Lcom/xiaomi/push/i;->e(Z)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lcom/xiaomi/push/i1;->A:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v0, v1, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/p3;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-string v0, ""

    move-object/from16 p1, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    iget v0, v1, Lcom/xiaomi/push/c1;->a:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/xiaomi/push/c1;->a:I

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v13, "begin to connect to "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/i1;->C()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/push/i1;->u:Ljava/net/Socket;

    invoke-static {v10, v2}, Lcom/xiaomi/push/k;->d(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v13, v1, Lcom/xiaomi/push/i1;->u:Ljava/net/Socket;

    const/16 v14, 0x1f40

    invoke-virtual {v13, v0, v14}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const-string v0, "tcp connected"

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/push/i1;->u:Ljava/net/Socket;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iput-object v10, v1, Lcom/xiaomi/push/i1;->w:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/i1;->D()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v13, v21, v19

    iput-wide v13, v1, Lcom/xiaomi/push/c1;->b:J

    iput-object v12, v1, Lcom/xiaomi/push/c1;->k:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v15, :cond_4

    const-wide/16 v21, 0x0

    move-object/from16 v23, v9

    move-object v9, v11

    move-object v11, v15

    move-object/from16 v24, v12

    move-object v12, v10

    const/16 v18, 0x1

    const-wide/16 v25, 0x0

    move-object/from16 v27, v15

    move-wide/from16 v15, v21

    :try_start_2
    invoke-virtual/range {v11 .. v16}, Lcom/xiaomi/push/i;->s(Ljava/lang/String;JJ)V

    goto :goto_2

    :cond_4
    move-object/from16 v23, v9

    move-object v9, v11

    move-object/from16 v24, v12

    move-object/from16 v27, v15

    const/16 v18, 0x1

    const-wide/16 v25, 0x0

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/xiaomi/push/i1;->A:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connected to "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " in "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Lcom/xiaomi/push/c1;->b:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v15, v24

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v23, v9

    move-object v9, v11

    move-object/from16 v24, v12

    move-object/from16 v27, v15

    const/16 v18, 0x1

    const-wide/16 v25, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v23, v9

    move-object v9, v11

    move-object/from16 v27, v15

    const/16 v18, 0x1

    const-wide/16 v25, 0x0

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v23, v9

    move-object v9, v11

    move-object/from16 v24, v12

    move-wide/from16 v25, v13

    move-object/from16 v27, v15

    const/16 v18, 0x1

    :goto_3
    :try_start_3
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "abnormal exception"

    invoke-direct {v11, v12, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v11, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    invoke-static {v0}, Ltf/c;->o(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->u(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v10

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v27, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v19

    const-wide/16 v15, 0x0

    iget-object v12, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    move-object/from16 v11, v27

    move-object/from16 v17, v12

    move-object v12, v10

    invoke-virtual/range {v11 .. v17}, Lcom/xiaomi/push/i;->t(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_6
    iget-object v10, v1, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v10}, Lcom/xiaomi/push/p3;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v15, v24

    invoke-static {v15, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_c

    :cond_7
    move-object v10, v15

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v11, p1

    move-object/from16 v15, v24

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v23, v9

    move-object v9, v11

    move-wide/from16 v25, v13

    move-object/from16 v27, v15

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v11, p1

    move-object v15, v12

    :goto_6
    :try_start_4
    iput-object v0, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltf/c;->u(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v10

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    if-eqz v27, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v19

    const-wide/16 v16, 0x0

    iget-object v12, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    move-object/from16 v11, v27

    move-object/from16 v19, v12

    move-object v12, v10

    move-object v10, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v19

    invoke-virtual/range {v11 .. v17}, Lcom/xiaomi/push/i;->t(Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_8

    :cond_9
    move-object v10, v15

    :goto_8
    iget-object v11, v1, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v11}, Lcom/xiaomi/push/p3;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_c

    :cond_a
    :goto_9
    move-object/from16 p1, v0

    move-object v11, v9

    move-object v12, v10

    move-object/from16 v9, v23

    move-wide/from16 v13, v25

    move-object/from16 v15, v27

    const/4 v10, 0x1

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltf/c;->u(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    if-eqz v27, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v13, v2, v19

    const-wide/16 v2, 0x0

    iget-object v4, v1, Lcom/xiaomi/push/i1;->t:Ljava/lang/Exception;

    move-object/from16 v11, v27

    move-object v12, v10

    move-object v5, v15

    move-wide v15, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/xiaomi/push/i;->t(Ljava/lang/String;JJLjava/lang/Exception;)V

    goto :goto_b

    :cond_b
    move-object v5, v15

    :goto_b
    iget-object v2, v1, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/p3;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_c

    :cond_c
    throw v0

    :cond_d
    move-object v9, v11

    move-wide/from16 v25, v13

    :goto_c
    const/4 v10, 0x0

    :goto_d
    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/m;->y()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-nez v10, :cond_10

    iget-wide v2, v1, Lcom/xiaomi/push/i1;->C:J

    cmp-long v0, v2, v25

    if-eqz v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/xiaomi/push/i1;->C:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x75300

    cmp-long v0, v2, v4

    if-lez v0, :cond_f

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaomi/push/i1;->C:J

    iget-object v0, v1, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/p3;->n(Landroid/content/Context;)Z

    :cond_f
    new-instance v0, Lcom/xiaomi/push/cd;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-void
.end method


# virtual methods
.method B(Ljava/lang/String;)Lcom/xiaomi/push/i;
    .locals 2

    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/push/m;->b(Ljava/lang/String;Z)Lcom/xiaomi/push/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/i;->u()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/push/l1;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/l1;-><init>(Lcom/xiaomi/push/i1;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/push/c2;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method public C()Ljava/net/Socket;
    .locals 1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method protected abstract D()V
.end method

.method protected declared-synchronized E(ILjava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/c1;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/xiaomi/push/c1;->g(IILjava/lang/Exception;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/push/c1;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/xiaomi/push/i1;->u:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    const-wide/16 p1, 0x0

    :try_start_3
    iput-wide p1, p0, Lcom/xiaomi/push/i1;->y:J

    iput-wide p1, p0, Lcom/xiaomi/push/i1;->z:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected G(Ljava/lang/Exception;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/i1;->A:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/32 v3, 0x493e0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/p3;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/push/i1;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/push/i1;->B:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/i1;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max short conn time reached, sink down current host:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltf/c;->l(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/xiaomi/push/i1;->I(Ljava/lang/String;JLjava/lang/Exception;)V

    :cond_0
    iput v2, p0, Lcom/xiaomi/push/i1;->B:I

    :cond_1
    return-void
.end method

.method protected I(Ljava/lang/String;JLjava/lang/Exception;)V
    .locals 10

    invoke-static {}, Lcom/xiaomi/push/d1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/push/m;->b(Ljava/lang/String;Z)Lcom/xiaomi/push/i;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v7, 0x0

    move-object v4, p1

    move-wide v5, p2

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/xiaomi/push/i;->t(Ljava/lang/String;JJLjava/lang/Exception;)V

    invoke-static {}, Lcom/xiaomi/push/m;->c()Lcom/xiaomi/push/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/m;->y()V

    :cond_0
    return-void
.end method

.method protected abstract J(Z)V
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/c1;->j:Ljava/lang/String;

    return-object v0
.end method

.method public L(ILjava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/k1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/xiaomi/push/k1;-><init>(Lcom/xiaomi/push/i1;IILjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    return-void
.end method

.method public declared-synchronized M()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/push/c1;->z()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/c1;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0}, Lcom/xiaomi/push/c1;->g(IILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/push/c1;->n:Lcom/xiaomi/push/d1;

    invoke-direct {p0, v0}, Lcom/xiaomi/push/i1;->F(Lcom/xiaomi/push/d1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Ltf/c;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/push/cd;

    invoke-direct {v1, v0}, Lcom/xiaomi/push/cd;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public N()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/i1;->y:J

    return-void
.end method

.method public O()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/i1;->z:J

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/i1;->w:Ljava/lang/String;

    return-object v0
.end method

.method public s(ILjava/lang/Exception;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/push/i1;->E(ILjava/lang/Exception;)V

    if-nez p2, :cond_0

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/push/i1;->A:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/i1;->G(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public w(Z)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/i1;->J(Z)V

    iget-object v0, p0, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/w1;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/w1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/w1;->q()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/push/i1;->x:Lcom/xiaomi/push/service/XMPushService;

    new-instance v7, Lcom/xiaomi/push/j1;

    const/16 v2, 0xd

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/push/j1;-><init>(Lcom/xiaomi/push/i1;IJJ)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v7, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    :cond_0
    return-void
.end method
