.class public final synthetic Lf8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf8/c;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lf8/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/b;->a:Lf8/c;

    iput-object p2, p0, Lf8/b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lf8/b;->a:Lf8/c;

    iget-object v1, p0, Lf8/b;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lf8/c;->d(Lf8/c;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
