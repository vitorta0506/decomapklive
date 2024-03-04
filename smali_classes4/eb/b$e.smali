.class Leb/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leb/b;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leb/b;


# direct methods
.method constructor <init>(Leb/b;)V
    .locals 0

    iput-object p1, p0, Leb/b$e;->a:Leb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Leb/b$e;->a:Leb/b;

    invoke-virtual {p1}, Leb/b;->A()V

    .line 2
    iget-object p1, p0, Leb/b$e;->a:Leb/b;

    invoke-static {p1}, Leb/b;->b(Leb/b;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Leb/b$e;->a:Leb/b;

    invoke-static {v0}, Leb/b;->c(Leb/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv9/a;->c(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
