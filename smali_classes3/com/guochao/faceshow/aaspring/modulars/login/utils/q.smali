.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;
    }
.end annotation


# static fields
.field private static e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

.field private b:Landroid/os/CountDownTimer;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c:Landroid/util/SparseArray;

    const v0, 0xea60

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->d:I

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->e()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public static d()Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;
    .locals 2

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    if-nez v1, :cond_0

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private e()V
    .locals 0

    return-void
.end method


# virtual methods
.method public f(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->d:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public g(I)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->d:I

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->d:I

    int-to-long v1, v0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    move-wide v6, v1

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    move v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;JJI)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->b:Landroid/os/CountDownTimer;

    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->c()V

    return-void
.end method

.method public setOnCountDownListener(Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/q;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/q$b;

    return-void
.end method
