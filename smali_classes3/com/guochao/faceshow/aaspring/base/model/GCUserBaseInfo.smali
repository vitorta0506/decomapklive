.class public interface abstract Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0012\u0010\u000e\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\tR\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\tR\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;",
        "Landroid/os/Parcelable;",
        "age",
        "",
        "getAge",
        "()I",
        "avatarUrl",
        "",
        "getAvatarUrl",
        "()Ljava/lang/String;",
        "countryLogo",
        "getCountryLogo",
        "dressHead",
        "getDressHead",
        "gender",
        "getGender",
        "mvpUrl",
        "getMvpUrl",
        "setMvpUrl",
        "(Ljava/lang/String;)V",
        "nickName",
        "getNickName",
        "smallAvatarUrl",
        "getSmallAvatarUrl",
        "userId",
        "getUserId",
        "lib_core_release"
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
.method public abstract getAge()I
.end method

.method public abstract getAvatarUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCountryLogo()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDressHead()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getGender()I
.end method

.method public abstract getMvpUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getNickName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getSmallAvatarUrl()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getUserId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setMvpUrl(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
