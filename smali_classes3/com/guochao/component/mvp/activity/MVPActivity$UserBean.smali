.class public final Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/activity/MVPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserBean"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0016R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;",
        "Lp7/h;",
        "",
        "getAvatarUrl",
        "",
        "getGender",
        "getPendantUrl",
        "getCountryFlag",
        "getCurrentUserId",
        "Lb8/g;",
        "getVipInfo",
        "a",
        "Ljava/lang/String;",
        "getA",
        "()Ljava/lang/String;",
        "p",
        "getP",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getA()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getGender()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipInfo()Lb8/g;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;

    iget-object v1, p0, Lcom/guochao/component/mvp/activity/MVPActivity$UserBean;->p:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/activity/MVPActivity$UserVip;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
