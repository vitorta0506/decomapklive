.class Lmd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Lkd/a;


# direct methods
.method constructor <init>(Landroid/graphics/Paint;Lkd/a;)V
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lkd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmd/a;->a:Landroid/graphics/Paint;

    .line 3
    iput-object p2, p0, Lmd/a;->b:Lkd/a;

    return-void
.end method
