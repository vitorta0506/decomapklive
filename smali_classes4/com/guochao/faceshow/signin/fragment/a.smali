.class public final synthetic Lcom/guochao/faceshow/signin/fragment/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/signin/fragment/a;->a:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/signin/fragment/a;->a:Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;

    check-cast p1, Lcom/guochao/faceshow/signin/bean/GrowTaskBean;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;->R1(Lcom/guochao/faceshow/signin/fragment/ActivityTaskFragment;Lcom/guochao/faceshow/signin/bean/GrowTaskBean;)V

    return-void
.end method
