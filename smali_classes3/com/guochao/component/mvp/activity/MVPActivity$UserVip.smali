.class public final Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/activity/MVPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserVip"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;",
        "Lb8/g;",
        "",
        "getVipAvatarPendentUrl",
        "p",
        "Ljava/lang/String;",
        "getP",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;)V",
        "component_mvp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getHostCertificationUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->a(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;->p:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSended()I
    .locals 1

    invoke-static {p0}, Lb8/f;->b(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVipAvatarPendentId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->c(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipAvatarPendentType()I
    .locals 1

    invoke-static {p0}, Lb8/f;->d(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public getVipAvatarPendentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getVipDressCarId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->f(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->g(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressCarUrlV2()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->h(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipDressChatUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb8/f;->i(Lb8/g;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipLevel()I
    .locals 1

    invoke-static {p0}, Lb8/f;->j(Lb8/g;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isVip()Z
    .locals 1

    invoke-static {p0}, Lb8/f;->k(Lb8/g;)Z

    move-result v0

    return v0
.end method
