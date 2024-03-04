.class public final synthetic Lf8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lf8/e;


# direct methods
.method public synthetic constructor <init>(Lf8/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/d;->a:Lf8/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf8/d;->a:Lf8/e;

    invoke-static {v0, p1}, Lf8/e;->d(Lf8/e;Landroid/view/View;)V

    return-void
.end method
