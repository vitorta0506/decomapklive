.class public abstract Lcom/guochao/faceshow/aaspring/db/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/guochao/faceshow/aaspring/db/FriendInfo;,
        Lcom/guochao/faceshow/aaspring/db/GroupInfo;,
        Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;
    }
    exportSchema = false
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "friendGroupRoomDao",
        "Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;",
        "friendRoomDao",
        "Lcom/guochao/faceshow/aaspring/db/FriendDao;",
        "systemConversationDao",
        "Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;",
        "Companion",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static instance:Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->Companion:Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->instance:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/guochao/faceshow/aaspring/db/AppDatabase;)V
    .locals 0

    sput-object p0, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->instance:Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/db/AppDatabase;->Companion:Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/db/AppDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/db/AppDatabase;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract friendGroupRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract friendRoomDao()Lcom/guochao/faceshow/aaspring/db/FriendDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract systemConversationDao()Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
