.class public Lcom/chad/library/adapter/base/module/BaseUpFetchModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/l;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0008\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u000c\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000b\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016R\u001c\u0010\u000c\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000f\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0010\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u0006\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/module/BaseUpFetchModule;",
        "Lx0/l;",
        "",
        "position",
        "",
        "autoUpFetch$com_github_CymChad_brvah",
        "(I)V",
        "autoUpFetch",
        "Lx0/k;",
        "listener",
        "setOnUpFetchListener",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "baseQuickAdapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "",
        "isUpFetchEnable",
        "Z",
        "()Z",
        "setUpFetchEnable",
        "(Z)V",
        "isUpFetching",
        "setUpFetching",
        "startUpFetchPosition",
        "I",
        "getStartUpFetchPosition",
        "()I",
        "setStartUpFetchPosition",
        "<init>",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isUpFetchEnable:Z

.field private isUpFetching:Z

.field private mUpFetchListener:Lx0/k;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startUpFetchPosition:I


# direct methods
.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "baseQuickAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    return-void
.end method


# virtual methods
.method public final autoUpFetch$com_github_CymChad_brvah(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetchEnable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetching:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    if-gt p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->mUpFetchListener:Lx0/k;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lx0/k;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final getStartUpFetchPosition()I
    .locals 1

    iget v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    return v0
.end method

.method public final isUpFetchEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetchEnable:Z

    return v0
.end method

.method public final isUpFetching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetching:Z

    return v0
.end method

.method public setOnUpFetchListener(Lx0/k;)V
    .locals 0
    .param p1    # Lx0/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->mUpFetchListener:Lx0/k;

    return-void
.end method

.method public final setStartUpFetchPosition(I)V
    .locals 0

    iput p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->startUpFetchPosition:I

    return-void
.end method

.method public final setUpFetchEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetchEnable:Z

    return-void
.end method

.method public final setUpFetching(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/chad/library/adapter/base/module/BaseUpFetchModule;->isUpFetching:Z

    return-void
.end method
