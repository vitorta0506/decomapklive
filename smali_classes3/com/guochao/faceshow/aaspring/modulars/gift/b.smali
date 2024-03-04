.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/gift/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/b;->a:Landroidx/fragment/app/FragmentActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/b;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/app/Dialog;Z)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/b;->a:Landroidx/fragment/app/FragmentActivity;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/b;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->b(Landroidx/fragment/app/FragmentActivity;ILandroid/app/Dialog;Z)V

    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
