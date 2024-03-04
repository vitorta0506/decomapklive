.class public final synthetic Lcom/guochao/faceshow/gift/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/gift/view/GiftComboView;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/gift/view/GiftComboView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/gift/view/a;->a:Lcom/guochao/faceshow/gift/view/GiftComboView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/gift/view/a;->a:Lcom/guochao/faceshow/gift/view/GiftComboView;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/gift/view/GiftComboView;->b(Lcom/guochao/faceshow/gift/view/GiftComboView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
