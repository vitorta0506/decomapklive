.class Lgb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgb/a;


# direct methods
.method constructor <init>(Lgb/a;)V
    .locals 0

    iput-object p1, p0, Lgb/a$a;->a:Lgb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lgb/a$a;->a:Lgb/a;

    invoke-static {p1}, Lgb/a;->a(Lgb/a;)Lgb/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lgb/a$a;->a:Lgb/a;

    invoke-static {p1}, Lgb/a;->a(Lgb/a;)Lgb/a$c;

    move-result-object p1

    iget-object v0, p0, Lgb/a$a;->a:Lgb/a;

    invoke-static {v0}, Lgb/a;->b(Lgb/a;)Landroid/app/Dialog;

    move-result-object v0

    invoke-interface {p1, v0}, Lgb/a$c;->b(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
