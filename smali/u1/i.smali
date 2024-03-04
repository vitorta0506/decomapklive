.class public final Lu1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lv1/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lw1/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu1/i;->a:Lfi/a;

    .line 3
    iput-object p2, p0, Lu1/i;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lu1/i;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lu1/i;->d:Lfi/a;

    return-void
.end method

.method public static a(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Lu1/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Landroid/content/Context;",
            ">;",
            "Lfi/a<",
            "Lw1/d;",
            ">;",
            "Lfi/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;",
            "Lfi/a<",
            "Ly1/a;",
            ">;)",
            "Lu1/i;"
        }
    .end annotation

    new-instance v0, Lu1/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lu1/i;-><init>(Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lw1/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Ly1/a;)Lv1/u;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lu1/h;->a(Landroid/content/Context;Lw1/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Ly1/a;)Lv1/u;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lq1/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv1/u;

    return-object p0
.end method


# virtual methods
.method public b()Lv1/u;
    .locals 4

    iget-object v0, p0, Lu1/i;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lu1/i;->b:Lfi/a;

    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw1/d;

    iget-object v2, p0, Lu1/i;->c:Lfi/a;

    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    iget-object v3, p0, Lu1/i;->d:Lfi/a;

    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/a;

    invoke-static {v0, v1, v2, v3}, Lu1/i;->c(Landroid/content/Context;Lw1/d;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;Ly1/a;)Lv1/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/i;->b()Lv1/u;

    move-result-object v0

    return-object v0
.end method
