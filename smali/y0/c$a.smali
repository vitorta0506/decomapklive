.class Ly0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/c;->a(Landroid/view/ViewGroup;)Lio/supercharge/shimmerlayout/ShimmerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/supercharge/shimmerlayout/ShimmerLayout;

.field final synthetic b:Ly0/c;


# direct methods
.method constructor <init>(Ly0/c;Lio/supercharge/shimmerlayout/ShimmerLayout;)V
    .locals 0

    iput-object p1, p0, Ly0/c$a;->b:Ly0/c;

    iput-object p2, p0, Ly0/c$a;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ly0/c$a;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->n()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ly0/c$a;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->o()V

    return-void
.end method
