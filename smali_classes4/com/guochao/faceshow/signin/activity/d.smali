.class public final synthetic Lcom/guochao/faceshow/signin/activity/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/activity/d;->a:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/activity/d;->a:Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;

    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->i0(Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;Lcom/guochao/faceshow/signin/bean/SigninBean;)V

    return-void
.end method
