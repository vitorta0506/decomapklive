.class Lsa/c$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c$e;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/c$e;


# direct methods
.method constructor <init>(Lsa/c$e;)V
    .locals 0

    iput-object p1, p0, Lsa/c$e$a;->a:Lsa/c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lsa/c$e$a;->a:Lsa/c$e;

    iget-object v0, v0, Lsa/c$e;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->q(Lsa/c;)V

    return-void
.end method
