.class Lsa/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/b;->j(Landroid/view/View;Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lsa/b;


# direct methods
.method constructor <init>(Lsa/b;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lsa/b$c;->b:Lsa/b;

    iput-object p2, p0, Lsa/b$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lsa/b$c;->b:Lsa/b;

    invoke-static {v0}, Lsa/b;->b(Lsa/b;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lsa/b$c;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lsa/b;->c(Lsa/b;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method
