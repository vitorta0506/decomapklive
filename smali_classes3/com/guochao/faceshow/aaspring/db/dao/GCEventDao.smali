.class public abstract Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\'J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\'J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\'\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/dao/GCEventDao;",
        "",
        "()V",
        "clear",
        "",
        "insert",
        "eventModel",
        "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;",
        "totalList",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
    .annotation build Landroidx/room/Query;
        value = "delete from gc_event_model"
    .end annotation
.end method

.method public abstract insert(Lcom/guochao/faceshow/aaspring/beans/GCEventModel;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/GCEventModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract totalList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from gc_event_model"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GCEventModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
