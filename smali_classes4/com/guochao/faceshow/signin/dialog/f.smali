.class public final synthetic Lcom/guochao/faceshow/signin/dialog/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/dialog/f;->a:Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/dialog/f;->a:Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;->T1(Lcom/guochao/faceshow/signin/dialog/LiveSignCenterDialog;Ljava/lang/Boolean;)V

    return-void
.end method
