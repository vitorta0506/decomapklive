.class Lt/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/q;


# instance fields
.field private a:Lt/q;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lt/q;)V
    .locals 0
    .param p1    # Lt/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt/g0;->a:Lt/q;

    return-void
.end method


# virtual methods
.method public a(Lu/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/a;",
            "Ljava/util/List<",
            "Lu/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lt/g0;->a:Lt/q;

    invoke-interface {v0, p1, p2}, Lt/q;->a(Lu/a;Ljava/util/List;)V

    return-void
.end method
