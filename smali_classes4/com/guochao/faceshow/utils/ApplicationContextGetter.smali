.class public Lcom/guochao/faceshow/utils/ApplicationContextGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sApplication:Landroid/app/Application;

.field private static volatile sInstance:Lcom/guochao/faceshow/utils/ApplicationContextGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/guochao/faceshow/utils/ApplicationContextGetter;
    .locals 2

    const-class v0, Lcom/guochao/faceshow/utils/ApplicationContextGetter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->sInstance:Lcom/guochao/faceshow/utils/ApplicationContextGetter;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/utils/ApplicationContextGetter;

    invoke-direct {v1}, Lcom/guochao/faceshow/utils/ApplicationContextGetter;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->sInstance:Lcom/guochao/faceshow/utils/ApplicationContextGetter;

    .line 3
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->sInstance:Lcom/guochao/faceshow/utils/ApplicationContextGetter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public get()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public setApplicationContext(Landroid/app/Application;)V
    .locals 0

    sput-object p1, Lcom/guochao/faceshow/utils/ApplicationContextGetter;->sApplication:Landroid/app/Application;

    return-void
.end method
