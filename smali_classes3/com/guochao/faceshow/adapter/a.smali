.class public final synthetic Lcom/guochao/faceshow/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/adapter/a;->a:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    iput p2, p0, Lcom/guochao/faceshow/adapter/a;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/adapter/a;->a:Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;

    iget v1, p0, Lcom/guochao/faceshow/adapter/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;->b(Lcom/guochao/faceshow/adapter/CommonRecyclerAdapter;ILandroid/view/View;)V

    return-void
.end method
