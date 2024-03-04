.class public final Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;,
        Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;",
        "",
        "()V",
        "sysHobbies",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
        "getSysHobbies",
        "()Ljava/util/List;",
        "setSysHobbies",
        "(Ljava/util/List;)V",
        "userHobbies",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
        "getUserHobbies",
        "setUserHobbies",
        "HobbyBean",
        "UserHobby",
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
.field private sysHobbies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userHobbies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSysHobbies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->sysHobbies:Ljava/util/List;

    return-object v0
.end method

.method public final getUserHobbies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->userHobbies:Ljava/util/List;

    return-object v0
.end method

.method public final setSysHobbies(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->sysHobbies:Ljava/util/List;

    return-void
.end method

.method public final setUserHobbies(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->userHobbies:Ljava/util/List;

    return-void
.end method
