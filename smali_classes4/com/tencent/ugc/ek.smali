.class final synthetic Lcom/tencent/ugc/ek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/tencent/ugc/UGCRotateScaleFilter;

.field private final b:F


# direct methods
.method private constructor <init>(Lcom/tencent/ugc/UGCRotateScaleFilter;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/ek;->a:Lcom/tencent/ugc/UGCRotateScaleFilter;

    iput p2, p0, Lcom/tencent/ugc/ek;->b:F

    return-void
.end method

.method public static a(Lcom/tencent/ugc/UGCRotateScaleFilter;F)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/tencent/ugc/ek;

    invoke-direct {v0, p0, p1}, Lcom/tencent/ugc/ek;-><init>(Lcom/tencent/ugc/UGCRotateScaleFilter;F)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/ugc/ek;->a:Lcom/tencent/ugc/UGCRotateScaleFilter;

    iget v1, p0, Lcom/tencent/ugc/ek;->b:F

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCRotateScaleFilter;->lambda$setRotate$0(Lcom/tencent/ugc/UGCRotateScaleFilter;F)V

    return-void
.end method
