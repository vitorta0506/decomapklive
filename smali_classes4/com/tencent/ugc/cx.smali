.class final synthetic Lcom/tencent/ugc/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/tencent/ugc/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/ugc/cx;

    invoke-direct {v0}, Lcom/tencent/ugc/cx;-><init>()V

    sput-object v0, Lcom/tencent/ugc/cx;->a:Lcom/tencent/ugc/cx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/tencent/ugc/cx;->a:Lcom/tencent/ugc/cx;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/tencent/ugc/UGCInitializer;->access$lambda$1()V

    return-void
.end method
