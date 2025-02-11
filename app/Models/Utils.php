<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;

class Utils
{
    public function getExchParty($exch_party = null)
    {
        $exch_builder = DB::table('party');
        $exch_builder->select('*');
        if (!empty($exch_party) && isset($exch_party)) {
            $exch_partyName = 'EXCH_' . $exch_party;
            $exch_builder->where('party_name', $exch_partyName);
        } else {
            $users = $this->getUsers();
            $userNames = array_map(function ($user) {
                return 'EXCH_' . $user->user_name;
            }, $users);
            $exch_builder->whereIn('party_name', $userNames);
            $exch_builder->orWhere('party_name', 'EXCH');
        }
        $result = $exch_builder->get()->toArray();
        return $result;
    }

    public function getPartyData($table, $party)
    {
        $data = DB::table($table);
        $data->select('*');
        $data->orderBy('srn', 'DESC');
        $data->where('dr_party', $party);
        $data->orWhere('cr_party', $party);
        $result = $data->first();

        return $result;
    }

    // public function getConversionInfo($fromCurrency, $toCurrency, $fromAmount = '', $toAmount = '')
    // {
    //     $info = 0;
    //     $actual_rate = '';

    //     if ($fromCurrency == 'inr' && $toCurrency == 'aed') {
    //         $info = 1;
    //         if ($fromAmount !== '' && $toAmount !== '') {
    //             $actual_rate = round($fromAmount / $toAmount, 2);
    //         }
    //     } elseif ($fromCurrency == 'aed' && $toCurrency == 'inr') {
    //         $info = 2;
    //         if ($fromAmount !== '' && $toAmount !== '') {
    //             $actual_rate = round($toAmount / $fromAmount, 2);
    //         }
    //     } elseif ($fromCurrency == 'inr' && $toCurrency == 'usd') {
    //         $info = 3;
    //         if ($fromAmount !== '' && $toAmount !== '') {
    //             $actual_rate = round($fromAmount / $toAmount, 2);
    //         }
    //     } elseif ($fromCurrency == 'usd' && $toCurrency == 'inr') {
    //         $info = 4;
    //         if ($fromAmount !== '' && $toAmount !== '') {
    //             $actual_rate = round($toAmount / $fromAmount, 2);
    //         }
    //         // info 5 is for commission
    //     } elseif ($fromCurrency == 'aed' && $toCurrency == 'usd') {
    //         $info = 6;
    //         if ($fromAmount !== '' && $toAmount !== '') {
    //             $actual_rate = round($fromAmount / $toAmount, 2);
    //         }
    //     } elseif ($fromCurrency == 'usd' && $toCurrency == 'aed') {
    //         $info = 7;
    //         if ($fromAmount !== '' && $toAmount !== '') {
    //             $actual_rate = round($toAmount / $fromAmount, 2);
    //         }
    //     }
    //     return ['info' => $info, 'actual_rate' => $actual_rate];
    // }

    public function getConversionInfo($fromCurrency, $toCurrency, $fromAmount = '', $toAmount = '')
    {
        $info = 0;
        $actual_rate = '';

        if ($fromCurrency == 'inr' && $toCurrency == 'aed') {
            $info = 1;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'aed' && $toCurrency == 'inr') {
            $info = 2;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'inr' && $toCurrency == 'usd') {
            $info = 3;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'usd' && $toCurrency == 'inr') {
            $info = 4;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'aed' && $toCurrency == 'usd') {
            $info = 6;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'usd' && $toCurrency == 'aed') {
            $info = 7;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'inr' && $toCurrency == 'eur') {
            $info = 8;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'eur' && $toCurrency == 'inr') {
            $info = 9;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'inr' && $toCurrency == 'gbp') {
            $info = 10;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'gbp' && $toCurrency == 'inr') {
            $info = 11;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'eur' && $toCurrency == 'usd') {
            $info = 12;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'usd' && $toCurrency == 'eur') {
            $info = 13;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'gbp' && $toCurrency == 'usd') {
            $info = 14;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'usd' && $toCurrency == 'gbp') {
            $info = 15;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'aed' && $toCurrency == 'eur') {
            $info = 16;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'eur' && $toCurrency == 'aed') {
            $info = 17;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'aed' && $toCurrency == 'gbp') {
            $info = 18;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'gbp' && $toCurrency == 'aed') {
            $info = 19;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        } elseif ($fromCurrency == 'eur' && $toCurrency == 'gbp') {
            $info = 20;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($fromAmount / $toAmount, 2);
            }
        } elseif ($fromCurrency == 'gbp' && $toCurrency == 'eur') {
            $info = 21;
            if ($fromAmount !== '' && $toAmount !== '') {
                $actual_rate = round($toAmount / $fromAmount, 2);
            }
        }

        return ['info' => $info, 'actual_rate' => $actual_rate];
    }

    // public function getConversionInfo($fromCurrency, $toCurrency, $fromAmount = '', $toAmount = '')
    // {
    //     $info = 0;
    //     $actual_rate = '';

    //     if ($fromAmount !== '' && $toAmount !== '') {
    //         $actual_rate = round($fromAmount / $toAmount, 2);
    //     }

    //     $conversionMap = [
    //         'inr_aed' => 1,
    //         'aed_inr' => 2,
    //         'inr_usd' => 3,
    //         'usd_inr' => 4,
    //         'aed_usd' => 6,
    //         'usd_aed' => 7,
    //         'inr_eur' => 8,
    //         'eur_inr' => 9,
    //         'inr_gbp' => 10,
    //         'gbp_inr' => 11,
    //         'usd_eur' => 12,
    //         'eur_usd' => 13,
    //         'usd_gbp' => 14,
    //         'gbp_usd' => 15,
    //         'aed_eur' => 16,
    //         'eur_aed' => 17,
    //         'aed_gbp' => 18,
    //         'gbp_aed' => 19,
    //         'eur_gbp' => 20,
    //         'gbp_eur' => 21
    //     ];

    //     $key = strtolower("{$fromCurrency}_{$toCurrency}");

    //     if (isset($conversionMap[$key])) {
    //         $info = $conversionMap[$key];
    //     }

    //     return ['info' => $info, 'actual_rate' => $actual_rate];
    // }

    public function getUsers()
    {
        $builder = DB::table('users');
        $builder->select('id', 'user_name');

        return $builder->get()->toArray();
    }
}
