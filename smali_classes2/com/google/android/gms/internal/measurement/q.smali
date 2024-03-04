.class public interface abstract Lcom/google/android/gms/internal/measurement/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final U:Lcom/google/android/gms/internal/measurement/q;

.field public static final V:Lcom/google/android/gms/internal/measurement/q;

.field public static final W:Lcom/google/android/gms/internal/measurement/q;

.field public static final X:Lcom/google/android/gms/internal/measurement/q;

.field public static final Y:Lcom/google/android/gms/internal/measurement/q;

.field public static final Z:Lcom/google/android/gms/internal/measurement/q;

.field public static final a0:Lcom/google/android/gms/internal/measurement/q;

.field public static final b0:Lcom/google/android/gms/internal/measurement/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/v;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->U:Lcom/google/android/gms/internal/measurement/q;

    new-instance v0, Lcom/google/android/gms/internal/measurement/o;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->V:Lcom/google/android/gms/internal/measurement/q;

    new-instance v0, Lcom/google/android/gms/internal/measurement/h;

    const-string v1, "continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->W:Lcom/google/android/gms/internal/measurement/q;

    new-instance v0, Lcom/google/android/gms/internal/measurement/h;

    const-string v1, "break"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->X:Lcom/google/android/gms/internal/measurement/q;

    new-instance v0, Lcom/google/android/gms/internal/measurement/h;

    const-string v1, "return"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->Y:Lcom/google/android/gms/internal/measurement/q;

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->Z:Lcom/google/android/gms/internal/measurement/q;

    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->a0:Lcom/google/android/gms/internal/measurement/q;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/u;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/q;->b0:Lcom/google/android/gms/internal/measurement/q;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Double;
.end method

.method public abstract c()Lcom/google/android/gms/internal/measurement/q;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/Boolean;
.end method

.method public abstract g()Ljava/util/Iterator;
.end method

.method public abstract u(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/q;
.end method
