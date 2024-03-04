.class public interface abstract Lorg/threeten/bp/temporal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract adjustInto(Lorg/threeten/bp/temporal/b;J)Lorg/threeten/bp/temporal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/b;",
            ">(TR;J)TR;"
        }
    .end annotation
.end method

.method public abstract getFrom(Lorg/threeten/bp/temporal/c;)J
.end method

.method public abstract isDateBased()Z
.end method

.method public abstract isSupportedBy(Lorg/threeten/bp/temporal/c;)Z
.end method

.method public abstract isTimeBased()Z
.end method

.method public abstract range()Lorg/threeten/bp/temporal/ValueRange;
.end method

.method public abstract rangeRefinedBy(Lorg/threeten/bp/temporal/c;)Lorg/threeten/bp/temporal/ValueRange;
.end method

.method public abstract resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/c;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/threeten/bp/temporal/g;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/c;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/temporal/c;"
        }
    .end annotation
.end method
