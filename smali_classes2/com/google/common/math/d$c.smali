.class final Lcom/google/common/math/d$c;
.super Lcom/google/common/math/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/math/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/d$c;

    invoke-direct {v0}, Lcom/google/common/math/d$c;-><init>()V

    sput-object v0, Lcom/google/common/math/d$c;->a:Lcom/google/common/math/d$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/math/d;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NaN"

    return-object v0
.end method
