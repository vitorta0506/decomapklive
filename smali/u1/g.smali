.class public final Lu1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq1/b<",
        "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Ly1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ly1/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu1/g;->a:Lfi/a;

    return-void
.end method

.method public static a(Ly1/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .locals 1

    invoke-static {p0}, Lu1/f;->a(Ly1/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lq1/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    return-object p0
.end method

.method public static b(Lfi/a;)Lu1/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/a<",
            "Ly1/a;",
            ">;)",
            "Lu1/g;"
        }
    .end annotation

    new-instance v0, Lu1/g;

    invoke-direct {v0, p0}, Lu1/g;-><init>(Lfi/a;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;
    .locals 1

    iget-object v0, p0, Lu1/g;->a:Lfi/a;

    invoke-interface {v0}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/a;

    invoke-static {v0}, Lu1/g;->a(Ly1/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu1/g;->c()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    move-result-object v0

    return-object v0
.end method
