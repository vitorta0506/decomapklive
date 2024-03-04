.class public final synthetic Lcom/google/common/math/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/google/common/math/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/math/n;

    invoke-direct {v0}, Lcom/google/common/math/n;-><init>()V

    sput-object v0, Lcom/google/common/math/n;->a:Lcom/google/common/math/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/math/o;

    invoke-direct {v0}, Lcom/google/common/math/o;-><init>()V

    return-object v0
.end method
