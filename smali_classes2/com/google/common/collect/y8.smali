.class public final synthetic Lcom/google/common/collect/y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/y8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/y8;

    invoke-direct {v0}, Lcom/google/common/collect/y8;-><init>()V

    sput-object v0, Lcom/google/common/collect/y8;->a:Lcom/google/common/collect/y8;

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

    new-instance v0, Lcom/google/common/collect/ImmutableTable$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableTable$a;-><init>()V

    return-object v0
.end method
