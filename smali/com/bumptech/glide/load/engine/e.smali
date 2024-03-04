.class Lcom/bumptech/glide/load/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lh0/a$b;"
    }
.end annotation


# instance fields
.field private final a:Le0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/a<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final c:Le0/e;


# direct methods
.method constructor <init>(Le0/a;Ljava/lang/Object;Le0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/a<",
            "TDataType;>;TDataType;",
            "Le0/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->a:Le0/a;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/e;->b:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/e;->c:Le0/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->a:Le0/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/e;->c:Le0/e;

    invoke-interface {v0, v1, p1, v2}, Le0/a;->a(Ljava/lang/Object;Ljava/io/File;Le0/e;)Z

    move-result p1

    return p1
.end method
