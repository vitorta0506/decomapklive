.class public final Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->showForbiddenLiveDialogIfNeed(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1",
        "Lcom/guochao/faceshow/views/e$a;",
        "Landroid/app/Dialog;",
        "dialog",
        "",
        "confirm",
        "",
        "onClick",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $f2fMatchContainer:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1;->$f2fMatchContainer:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl$showForbiddenLiveDialogIfNeed$dialog$1;->$f2fMatchContainer:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public bridge synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
