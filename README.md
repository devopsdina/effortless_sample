# effortless_sample

This is an example of updating the chef-client.rb when using the effortless pattern.  There is no logic executed in this cookbook.  There could be logic, but for the purposes of this sample code, there is not.

## What it does

The code in `habitat/plan.sh` has been modified to allow my custom `dm_client.rb` to be concatenated with the `client-config.rb` generated by chef scaffolding.

## Assumptions

The steps [here](https://www.habitat.sh/docs/using-builder/) have been completed if pushing the hab package to builder.

## How to use

**Note: These steps have been verified on a Mac only**

build the effortless package from the directory

- `hab pkg build .`

Run test kitchen

- `kitchen converge`

Log into the kitchen

- `kitchen login`

Verify the modified `client-config.rb` is as you expect:

``` SHELL
  sudo -s
  cd /hab/pkgs/<origin>/effortless_sample/<pkg version>/<hab pkg version>/config/
  cat client-config.rb
```

Destroy the kitchen

- `kitchen destroy`

Push the package to your origin

- `hab pkg upload results/<your-working-package>.hart`

Rock on! :metal:
