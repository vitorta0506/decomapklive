.class public Li/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Li/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Li/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a;Li/a;Li/b;Li/b;)V
    .locals 0
    .param p1    # Li/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Li/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Li/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/k;->a:Li/a;

    .line 3
    iput-object p2, p0, Li/k;->b:Li/a;

    .line 4
    iput-object p3, p0, Li/k;->c:Li/b;

    .line 5
    iput-object p4, p0, Li/k;->d:Li/b;

    return-void
.end method
