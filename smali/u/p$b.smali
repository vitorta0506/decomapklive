.class public final Lu/p$b;
.super Lu/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lu/a$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu/p$b;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lu/p;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lu/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lu/p;-><init>(Lu/p$b;Lu/p$a;)V

    return-object v0
.end method

.method public bridge synthetic s()Lu/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lu/p$b;->A()Lu/p;

    move-result-object v0

    return-object v0
.end method
