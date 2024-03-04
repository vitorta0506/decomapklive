.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput p2, p0, Lcom/guochao/faceshow/userhomepage/act/j;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/j;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/guochao/faceshow/userhomepage/act/j;->b:I

    invoke-static {v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->d0(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
