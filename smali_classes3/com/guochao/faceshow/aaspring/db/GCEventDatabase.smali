.class public abstract Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/guochao/faceshow/aaspring/beans/GCEventModel;
    }
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;",
        "Landroidx/room/RoomDatabase;",
        "()V",
        "eventDao",
        "Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final map:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;->Companion:Lcom/guochao/faceshow/aaspring/db/GCEventDatabase$Companion;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;->map:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMap$cp()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/db/GCEventDatabase;->map:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method public abstract eventDao()Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
