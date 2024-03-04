.class Llk/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:[I

.field b:[I

.field c:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Llk/a$d;->a:[I

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Llk/a$d;->b:[I

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    iput-object v0, p0, Llk/a$d;->c:[I

    return-void
.end method

.method synthetic constructor <init>(Llk/a$a;)V
    .locals 0

    invoke-direct {p0}, Llk/a$d;-><init>()V

    return-void
.end method
