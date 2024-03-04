.class public final Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2;
.super Lio/reactivex/observers/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/library_xmagic/XMagicHelper$Companion;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2",
        "Lio/reactivex/observers/b;",
        "",
        "str",
        "",
        "onNext",
        "",
        "e",
        "onError",
        "onComplete",
        "lib_xmagic_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lio/reactivex/observers/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setResourceUnzipped$cp(Z)V

    .line 2
    invoke-static {p1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->access$checkDone(Lcom/guochao/library_xmagic/XMagicHelper$Companion;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "version_code"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    sget-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    invoke-virtual {v0, p1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->setSBaseDir(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setResourceUnzipped$cp(Z)V

    .line 6
    invoke-static {v0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->access$checkDone(Lcom/guochao/library_xmagic/XMagicHelper$Companion;)V

    return-void
.end method
