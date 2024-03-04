.class Lbb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->l(Lod/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lod/a;

.field final synthetic b:Lbb/a;


# direct methods
.method constructor <init>(Lbb/a;Lod/a;)V
    .locals 0

    iput-object p1, p0, Lbb/a$a;->b:Lbb/a;

    iput-object p2, p0, Lbb/a$a;->a:Lod/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbb/a$a;->b:Lbb/a;

    invoke-static {v0}, Lbb/a;->b(Lbb/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbb/a$a;->a:Lod/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
