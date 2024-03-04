.class public final synthetic Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/c;->a:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/app/Dialog;Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/c;->a:Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/proxy/impl/F2fProxyImpl;->b(Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
