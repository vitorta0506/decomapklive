.class public final synthetic Lcom/google/common/collect/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/h2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/h2;

    invoke-direct {v0}, Lcom/google/common/collect/h2;-><init>()V

    sput-object v0, Lcom/google/common/collect/h2;->a:Lcom/google/common/collect/h2;

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

    new-instance v0, Lcom/google/common/collect/ImmutableMap$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$b;-><init>()V

    return-object v0
.end method
