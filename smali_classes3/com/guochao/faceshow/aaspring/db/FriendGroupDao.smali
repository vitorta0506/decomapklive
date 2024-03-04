.class public interface abstract Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\'J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u000cH\'J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008H\'J\u001a\u0010\u000f\u001a\u00020\u00032\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u000cH\'J\u0012\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0008H\'J!\u0010\u0013\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\'\u00a2\u0006\u0002\u0010\u0016J!\u0010\u0017\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010\u001d\u00a8\u0006\u001e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/db/FriendGroupDao;",
        "",
        "deleteAllGroup",
        "",
        "deleteGroupById",
        "id",
        "",
        "findGroupById",
        "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "groupId",
        "(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
        "getGroupList",
        "",
        "insertGroup",
        "groupInfo",
        "insertGroups",
        "list",
        "updateGroup",
        "note",
        "updateGroupName",
        "name",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;)V",
        "updateIsExpaned",
        "isExpanded",
        "",
        "(Ljava/lang/Boolean;Ljava/lang/Integer;)V",
        "updateSortNum",
        "sortNum",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
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
.method public abstract deleteAllGroup()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM friendGroup"
    .end annotation
.end method

.method public abstract deleteGroupById(I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM friendGroup WHERE id =:id"
    .end annotation
.end method

.method public abstract findGroupById(Ljava/lang/Integer;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friendGroup WHERE id = :groupId LIMIT 1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getGroupList()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friendGroup ORDER BY sortNum"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insertGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/db/GroupInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertGroups(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/db/GroupInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGroup(Lcom/guochao/faceshow/aaspring/db/GroupInfo;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/db/GroupInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation
.end method

.method public abstract updateGroupName(Ljava/lang/Integer;Ljava/lang/String;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE friendGroup SET name = :name WHERE id =:groupId"
    .end annotation
.end method

.method public abstract updateIsExpaned(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE friendGroup SET isSelect = :isExpanded WHERE id =:groupId"
    .end annotation
.end method

.method public abstract updateSortNum(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE friendGroup SET sortNum = :sortNum WHERE id =:groupId"
    .end annotation
.end method
