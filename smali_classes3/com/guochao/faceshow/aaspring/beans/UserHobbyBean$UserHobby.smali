.class public final Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserHobby"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u001b\u0010\u0006\"\u0004\u0008\u001c\u0010\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
        "",
        "()V",
        "hobbyId",
        "",
        "getHobbyId",
        "()Ljava/lang/Integer;",
        "setHobbyId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "mIsSelect",
        "",
        "getMIsSelect",
        "()Ljava/lang/Boolean;",
        "setMIsSelect",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "tags",
        "",
        "getTags",
        "()Ljava/lang/String;",
        "setTags",
        "(Ljava/lang/String;)V",
        "type",
        "getType",
        "setType",
        "typeId",
        "getTypeId",
        "setTypeId",
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


# instance fields
.field private hobbyId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsSelect:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tags:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->mIsSelect:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getHobbyId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->hobbyId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMIsSelect()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->mIsSelect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTags()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTypeId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->typeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setHobbyId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->hobbyId:Ljava/lang/Integer;

    return-void
.end method

.method public final setMIsSelect(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->mIsSelect:Ljava/lang/Boolean;

    return-void
.end method

.method public final setTags(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->tags:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->type:Ljava/lang/Integer;

    return-void
.end method

.method public final setTypeId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->typeId:Ljava/lang/Integer;

    return-void
.end method
