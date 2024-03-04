.class public final synthetic Lcom/guochao/faceshow/signin/fragment/i;
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

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/i;->a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/i;->a:Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;->S1(Lcom/guochao/faceshow/signin/fragment/SigninTaskFragment;Ljava/util/List;)V

    return-void
.end method
