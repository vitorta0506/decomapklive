.class public Lcom/guochao/faceshow/utils/GsonGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static gson:Lcom/google/gson/Gson;

.field private static final syncRoot:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/GsonGetter;->syncRoot:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGson()Lcom/google/gson/Gson;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/GsonGetter;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/guochao/faceshow/utils/GsonGetter;->syncRoot:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/utils/GsonGetter;->gson:Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/utils/GsonGetter;->gson:Lcom/google/gson/Gson;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/utils/GsonGetter;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method
