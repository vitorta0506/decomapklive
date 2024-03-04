.class public final synthetic Lcom/guochao/faceshow/signin/fragment/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/h;->a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/h;->a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    check-cast p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->Q1(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V

    return-void
.end method
