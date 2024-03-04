.class public final synthetic Lcom/chad/library/adapter/base/module/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;


# direct methods
.method public synthetic constructor <init>(Lcom/chad/library/adapter/base/module/BaseDraggableModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/b;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/chad/library/adapter/base/module/b;->a:Lcom/chad/library/adapter/base/module/BaseDraggableModule;

    invoke-static {v0, p1, p2}, Lcom/chad/library/adapter/base/module/BaseDraggableModule;->a(Lcom/chad/library/adapter/base/module/BaseDraggableModule;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
