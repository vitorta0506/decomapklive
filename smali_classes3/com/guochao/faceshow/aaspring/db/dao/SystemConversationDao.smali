.class public interface abstract Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0010\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\'J\u0016\u0010\u0007\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\'\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/dao/SystemConversationDao;",
        "",
        "deleteAll",
        "",
        "getAllSystemConversation",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;",
        "insertConversations",
        "conversations",
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


# virtual methods
.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM system_conversation"
    .end annotation
.end method

.method public abstract getAllSystemConversation()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM system_conversation "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insertConversations(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/main/model/SystemConversationModel;",
            ">;)V"
        }
    .end annotation
.end method
