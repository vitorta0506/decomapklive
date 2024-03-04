.class public final synthetic Lcom/google/common/collect/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/z1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/z1;

    invoke-direct {v0}, Lcom/google/common/collect/z1;-><init>()V

    sput-object v0, Lcom/google/common/collect/z1;->a:Lcom/google/common/collect/z1;

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

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    return-object v0
.end method
